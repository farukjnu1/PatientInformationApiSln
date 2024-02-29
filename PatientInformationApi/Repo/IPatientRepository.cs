using PatientInformationApi.Models;
using PatientInformationApi.ViewModels;
using System.Linq.Expressions;

namespace PatientInformationApi.Repo
{
    public interface IPatientRepository
    {
        IEnumerable<Patient> FindAll();
        PatientVm FindById(int id);
        bool Create(PatientVm entity);
        bool Update(PatientVm entity);
        bool Delete(int id);
        PatientMasterVm GetMaster();
    }
}
